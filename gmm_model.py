#LIBRARIES
#IMPORT LIBS
import sys
sys.path.append('/home/hulk/Compiles/pbdlib-python')
# print(sys.path)

import numpy as np
import matplotlib.pyplot as plt
from scipy.io import loadmat # loading data from matlab
from mpl_toolkits.mplot3d import Axes3D

import os
import pbdlib as pbd
import pbdlib.plot 
from pbdlib.utils.jupyter_utils import *
np.set_printoptions(precision=2)

#STATES CHANGE
nb_states = 5  # choose the number of states in HMM or clusters in GMM

#IMPORT DATA FROM MATLAB

letter_in = 'right_traj' # TRAJECTORY FILE NAME IN ROBOTDATA

datapath = os.path.dirname(pbd.__file__) + '/data/RobotData/'

data_in = loadmat(datapath + '%s.mat' % letter_in)

demos_in = [d['pos'][0][0].T for d in data_in['posdemos'][0]] # cleaning matlab data
demos_out = [d['vel'][0][0].T for d in data_in['veldemos'][0]] # cleaning matlab data

demos = [np.concatenate([d_in, d_out], axis=1) 
         for d_in, d_out in zip(demos_in, demos_out)]

#PLOTTING THE GRAPHS
fig, ax = plt.subplots(ncols=3)
fig.set_size_inches(18., 8.5)
plt.tight_layout()

[ax[i].set_title(s) for i, s in enumerate(['input', 'output'])]

ax = fig.add_subplot(1,2,1, projection = '3d')
B = np.arange(5)
for l in B:
    x = np.array(demos_in[l])
    xp = x[:,0]
    yp = x[:,1]
    zp = x[:,2]  
    
    ax.plot3D(xp,yp,zp, linewidth = 2, antialiased=True)
    ax.set_xlabel('X axis')
    ax.set_ylabel('Y axis')
    ax.set_zlabel('Z axis')


ax = fig.add_subplot(1,2,2, projection = '3d')
B = np.arange(5)
for l in B:
    x = np.array(demos_out[l])
    xp = x[:,0]
    yp = x[:,1]
    zp = x[:,2]  

    ax.plot3D(xp,yp,zp, linewidth = 2, antialiased=True)
    ax.set_xlabel('X axis')
    ax.set_ylabel('Y axis')
    ax.set_zlabel('Z axis')

#VERIFY THE SHAPE
np.stack(demos).shape


#MODEL CREATION
# creating models
gmm = pbd.GMM(nb_states=nb_states)
hmm = pbd.HMM(nb_states=nb_states)
hsmm = pbd.HSMM(nb_states=nb_states)

# initializing model by splitting the demonstrations in k bins
[model.init_hmm_kbins(demos) for model in [gmm, hmm, hsmm]] 

# EM to train model
gmm.em(np.concatenate(demos), reg=1e-8) 
hmm.em(np.stack(demos), reg=1e-8) 
hsmm.em(demos, reg=1e-6) 

# plotting demos
fig, ax = plt.subplots(ncols=3)
fig.set_size_inches(15.0, 5.8)

ax = fig.add_subplot(1,2,1, projection = '3d')
B = np.arange(5)
for l in B:
    x = np.array(demos_in[l])
    xp = x[:,0]
    yp = x[:,1]
    zp = x[:,2]  
    ax.plot3D(xp,yp,zp, linewidth = 2, antialiased=True)
    ax.set_xlabel('X axis')
    ax.set_ylabel('Y axis')
    ax.set_zlabel('Z axis')
    
# print(np.shape(gmm.mu))
# print(np.shape(gmm.sigma))
# print(gmm.mu)
# print(gmm.sigma)
# pbd.plot_gmm3d(ax, gmm.mu, gmm.sigma)
# plt.tight_layout()
# for p_in, p_out in zip(demos_in, demos_out):
#     ax[0].plot(p_in[:, 0], p_in[:, 1])
#     ax[1].plot(p_out[:, 0], p_out[:, 1])    
# [ax[i].set_title(s, fontsize=16) 
#      for i, s in enumerate([r'$\{\mu_{IN}, \Sigma_{IN}\}$',
#                             '$\{\mu_{OUT}, \Sigma_{OUT}\}$', r'$A$'])]
# use dim for selecting dimensions of GMM to plot
# pbd.plot_gmm3d(gmm.mu, gmm.sigma, ax=ax[0], dim=[0, 1]); 
# pbd.plot_gmm3d(gmm.mu, gmm.sigma, ax=ax[1], dim=[2, 3]); 
# plotting transition matrix
# ax[2].imshow(np.log(hmm.Trans+1e-10), interpolation='nearest', 
#              vmin=-5, cmap='viridis');
# plt.tight_layout()


#MAY IGNORE
n = 0

resp_gmm = gmm.compute_resp(demos_in[n], marginal=slice(0, 3))

alpha_hmm, _, _, _, _ = hmm.compute_messages(
    demos_in[n], marginal=slice(0, 3))

alpha_hsmm, _, _, _, _ = hsmm.compute_messages(
    demos_in[n], marginal=slice(0, 3))


fig, ax = plt.subplots(nrows=3)
fig.set_size_inches(7.5,3.6)

ax[0].plot(resp_gmm.T , lw=1);
ax[1].plot(alpha_hmm.T, lw=1);
ax[2].plot(alpha_hsmm.T, lw=1);

[ax[i].set_ylim([-0.2, 1.2]) for i in range(3)]
plt.xlabel('timestep');


#RECONSTRUCTION OF THE TRAJ POINTS
from numpy import array
y = array([.5,-.4,.01])
y.shape = (1,3)

mu_est_gmm, sigma_est_gmm = gmm.condition(
    y, dim_in=slice(0, 3), dim_out=slice(3, 6))
    
mu_est_hmm, sigma_est_hmm = hmm.condition(
    y, dim_in=slice(0, 3), dim_out=slice(3, 6))

#ORIGINAL TRAJ PLOTS
# mu_est_gmm, sigma_est_gmm = gmm.condition(
#     demos_in[1], dim_in=slice(0, 2), dim_out=slice(2, 4))
# mu_est_hmm, sigma_est_hmm = hmm.condition(
#     demos_in[1], dim_in=slice(0, 3), dim_out=slice(3, 6))
# mu_est_hsmm, sigma_est_hsmm = hsmm.condition(
#     demos_in[1], dim_in=slice(0, 2), dim_out=slice(2, 4))

# fig, ax = plt.subplots(ncols=3)
fig.set_size_inches(22.0, 7.5)
# for p_in, p_out in zip(demos_in, demos_out):
#     ax[0].plot(p_out[:, 0], p_out[:, 1],'k', alpha=0.1)
#     ax[1].plot(p_out[:, 0], p_out[:, 1],'k', alpha=0.1)
#     ax[2].plot(p_out[:, 0], p_out[:, 1],'k', alpha=0.1)
# [ax[i].set_title(s, fontsize=16) 
#      for i, s in enumerate(['GMM', 'HMM', 'HSMM'])]
# ax[0].plot(mu_est_gmm[:, 0], mu_est_gmm[:,1 ], 'k-x', lw=1)
# ax[1].plot(mu_est_hmm[:, 0], mu_est_hmm[:,1 ], 'r--', lw=2)
# ax[2].plot(mu_est_hsmm[:, 0], mu_est_hsmm[:,1 ], 'r--', lw=2)
# pbd.plot_gmm(
#     mu_est_gmm[::5], sigma_est_gmm[::5], ax=ax[0], swap=True, alpha=0.05)
# pbd.plot_gmm(
#     mu_est_hmm[::5], sigma_est_hmm[::5], ax=ax[1], swap=True, alpha=0.05)
# pbd.plot_gmm(
#     mu_est_hsmm[::5], sigma_est_hsmm[::5], ax=ax[2], swap=True, alpha=0.05)
# print(demos_in[1])



#FINAL PLOTS
delt = .5
pos = array([0,0,0])
pos.shape = (1,3)

pos = y + mu_est_gmm*delt

#2D
# A = np.arange(1500)
# for j in A:
# #     print(j)
#     temp = pos[j]
# #     print(temp)
#     temp.shape = (1,2) 
#     mu_est_gmm, sigma_est_gmm = gmm.condition(temp, dim_in=slice(0, 2), dim_out=slice(2, 4))
# #     print(mu_est_gmm)
# #     z = np.concatenate((z,y),axis=0)
# #     pos[j+1] = pos[j] + mu_est_gmm*delt
#     newpos = temp + mu_est_gmm*delt
#     newpos.shape = (1,2)
#     finalresult = np.concatenate((pos,newpos),axis=0)
#     pos = finalresult

#3D
A = np.arange(100)
for j in A:
    temp = pos[j]
    temp.shape = (1,3) 
    mu_est_gmm, sigma_est_gmm = gmm.condition(temp, dim_in=slice(0, 3), dim_out=slice(3, 6))
    newpos = temp + mu_est_gmm*delt
    newpos.shape = (1,3)
    finalresult = np.concatenate((pos,newpos),axis=0)
    pos = finalresult

fig, ax = plt.subplots(ncols=2)
fig.set_size_inches(18., 8.5)
ax = fig.add_subplot(1,2,1, projection = '3d')
C = np.arange(5)
for m in C:
    x = np.array(demos_in[m])
    xp = x[:,0]
    yp = x[:,1]
    zp = x[:,2]  
    ax.plot3D(xp,yp,zp, linewidth = 2, antialiased=True)
    ax.set_xlabel('X axis')
    ax.set_ylabel('Y axis')
    ax.set_zlabel('Z axis')

print(pos)
ax.plot3D(pos[:,0],pos[:,1],pos[:,2],linewidth = 5, color='black')
plt.show()