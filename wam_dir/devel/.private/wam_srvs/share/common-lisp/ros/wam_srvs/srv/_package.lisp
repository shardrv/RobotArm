(cl:defpackage wam_srvs-srv
  (:use )
  (:export
   "BHANDFINGERPOS"
   "<BHANDFINGERPOS-REQUEST>"
   "BHANDFINGERPOS-REQUEST"
   "<BHANDFINGERPOS-RESPONSE>"
   "BHANDFINGERPOS-RESPONSE"
   "BHANDFINGERVEL"
   "<BHANDFINGERVEL-REQUEST>"
   "BHANDFINGERVEL-REQUEST"
   "<BHANDFINGERVEL-RESPONSE>"
   "BHANDFINGERVEL-RESPONSE"
   "BHANDGRASPPOS"
   "<BHANDGRASPPOS-REQUEST>"
   "BHANDGRASPPOS-REQUEST"
   "<BHANDGRASPPOS-RESPONSE>"
   "BHANDGRASPPOS-RESPONSE"
   "BHANDGRASPVEL"
   "<BHANDGRASPVEL-REQUEST>"
   "BHANDGRASPVEL-REQUEST"
   "<BHANDGRASPVEL-RESPONSE>"
   "BHANDGRASPVEL-RESPONSE"
   "BHANDPINCHPOS"
   "<BHANDPINCHPOS-REQUEST>"
   "BHANDPINCHPOS-REQUEST"
   "<BHANDPINCHPOS-RESPONSE>"
   "BHANDPINCHPOS-RESPONSE"
   "BHANDSPREADPOS"
   "<BHANDSPREADPOS-REQUEST>"
   "BHANDSPREADPOS-REQUEST"
   "<BHANDSPREADPOS-RESPONSE>"
   "BHANDSPREADPOS-RESPONSE"
   "BHANDSPREADVEL"
   "<BHANDSPREADVEL-REQUEST>"
   "BHANDSPREADVEL-REQUEST"
   "<BHANDSPREADVEL-RESPONSE>"
   "BHANDSPREADVEL-RESPONSE"
   "CARTPOSMOVE"
   "<CARTPOSMOVE-REQUEST>"
   "CARTPOSMOVE-REQUEST"
   "<CARTPOSMOVE-RESPONSE>"
   "CARTPOSMOVE-RESPONSE"
   "CARTVEL"
   "<CARTVEL-REQUEST>"
   "CARTVEL-REQUEST"
   "<CARTVEL-RESPONSE>"
   "CARTVEL-RESPONSE"
   "CONNECT"
   "<CONNECT-REQUEST>"
   "CONNECT-REQUEST"
   "<CONNECT-RESPONSE>"
   "CONNECT-RESPONSE"
   "FOLLOWPATH"
   "<FOLLOWPATH-REQUEST>"
   "FOLLOWPATH-REQUEST"
   "<FOLLOWPATH-RESPONSE>"
   "FOLLOWPATH-RESPONSE"
   "FORCETORQUE"
   "<FORCETORQUE-REQUEST>"
   "FORCETORQUE-REQUEST"
   "<FORCETORQUE-RESPONSE>"
   "FORCETORQUE-RESPONSE"
   "FORCETORQUEBASE"
   "<FORCETORQUEBASE-REQUEST>"
   "FORCETORQUEBASE-REQUEST"
   "<FORCETORQUEBASE-RESPONSE>"
   "FORCETORQUEBASE-RESPONSE"
   "FORCETORQUETOOL"
   "<FORCETORQUETOOL-REQUEST>"
   "FORCETORQUETOOL-REQUEST"
   "<FORCETORQUETOOL-RESPONSE>"
   "FORCETORQUETOOL-RESPONSE"
   "FORCETORQUETOOLTIME"
   "<FORCETORQUETOOLTIME-REQUEST>"
   "FORCETORQUETOOLTIME-REQUEST"
   "<FORCETORQUETOOLTIME-RESPONSE>"
   "FORCETORQUETOOLTIME-RESPONSE"
   "GETTOOLPOSE"
   "<GETTOOLPOSE-REQUEST>"
   "GETTOOLPOSE-REQUEST"
   "<GETTOOLPOSE-RESPONSE>"
   "GETTOOLPOSE-RESPONSE"
   "GRAVITYCOMP"
   "<GRAVITYCOMP-REQUEST>"
   "GRAVITYCOMP-REQUEST"
   "<GRAVITYCOMP-RESPONSE>"
   "GRAVITYCOMP-RESPONSE"
   "HAPTICSPHERE"
   "<HAPTICSPHERE-REQUEST>"
   "HAPTICSPHERE-REQUEST"
   "<HAPTICSPHERE-RESPONSE>"
   "HAPTICSPHERE-RESPONSE"
   "HOLD"
   "<HOLD-REQUEST>"
   "HOLD-REQUEST"
   "<HOLD-RESPONSE>"
   "HOLD-RESPONSE"
   "HOLDGAINS"
   "<HOLDGAINS-REQUEST>"
   "HOLDGAINS-REQUEST"
   "<HOLDGAINS-RESPONSE>"
   "HOLDGAINS-RESPONSE"
   "JP_PID"
   "<JP_PID-REQUEST>"
   "JP_PID-REQUEST"
   "<JP_PID-RESPONSE>"
   "JP_PID-RESPONSE"
   "JV_PID"
   "<JV_PID-REQUEST>"
   "JV_PID-REQUEST"
   "<JV_PID-RESPONSE>"
   "JV_PID-RESPONSE"
   "JOINTMOVE"
   "<JOINTMOVE-REQUEST>"
   "JOINTMOVE-REQUEST"
   "<JOINTMOVE-RESPONSE>"
   "JOINTMOVE-RESPONSE"
   "JOINTMOVEBLOCK"
   "<JOINTMOVEBLOCK-REQUEST>"
   "JOINTMOVEBLOCK-REQUEST"
   "<JOINTMOVEBLOCK-RESPONSE>"
   "JOINTMOVEBLOCK-RESPONSE"
   "LINK"
   "<LINK-REQUEST>"
   "LINK-REQUEST"
   "<LINK-RESPONSE>"
   "LINK-RESPONSE"
   "ORTNGAINS"
   "<ORTNGAINS-REQUEST>"
   "ORTNGAINS-REQUEST"
   "<ORTNGAINS-RESPONSE>"
   "ORTNGAINS-RESPONSE"
   "ORTNMOVE"
   "<ORTNMOVE-REQUEST>"
   "ORTNMOVE-REQUEST"
   "<ORTNMOVE-RESPONSE>"
   "ORTNMOVE-RESPONSE"
   "ORTNSPLITMOVE"
   "<ORTNSPLITMOVE-REQUEST>"
   "ORTNSPLITMOVE-REQUEST"
   "<ORTNSPLITMOVE-RESPONSE>"
   "ORTNSPLITMOVE-RESPONSE"
   "PID"
   "<PID-REQUEST>"
   "PID-REQUEST"
   "<PID-RESPONSE>"
   "PID-RESPONSE"
   "PLAY"
   "<PLAY-REQUEST>"
   "PLAY-REQUEST"
   "<PLAY-RESPONSE>"
   "PLAY-RESPONSE"
   "POSEMOVE"
   "<POSEMOVE-REQUEST>"
   "POSEMOVE-REQUEST"
   "<POSEMOVE-RESPONSE>"
   "POSEMOVE-RESPONSE"
   "TP_PID"
   "<TP_PID-REQUEST>"
   "TP_PID-REQUEST"
   "<TP_PID-RESPONSE>"
   "TP_PID-RESPONSE"
   "TEACH"
   "<TEACH-REQUEST>"
   "TEACH-REQUEST"
   "<TEACH-RESPONSE>"
   "TEACH-RESPONSE"
  ))
