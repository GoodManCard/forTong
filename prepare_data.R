setwd("~/lab/friend/Tong/")
getwd()

data_list = list.files("./aws_mins/")
data_dir = paste("./aws_mins/", data_list, sep="")
data_new_name = paste("./new_data/", data_list, sep="")
n = length(data_dir)   # for loops

# now, processing each data file
for (i in 1:n){
    data_tmp = read.csv(file=data_dir[i], header=T)
    names(data_tmp) <- c("new_title")

    new_name = data_new_name[i]


    # get col data

    time_now <- substr(data_tmp$new_title, 1, 4)


    wd_avg_2mins <- substr(data_tmp$new_title, 5, 8)
    ws_avg_2mins <- substr(data_tmp$new_title, 9, 12)

    wd_avg_10mins <- substr(data_tmp$new_title, 13, 16)
    ws_avg_10mins <- substr(data_tmp$new_title, 17, 20)

    wd_maxsp_this_min <- substr(data_tmp$new_title, 21, 24)
    ws_maxsp_this_min <- substr(data_tmp$new_title, 25, 28)

    ws_avg_2_mins_helper <- substr(data_tmp$new_title, 29,32)
    ws_avg_10_mins_helper <- substr(data_tmp$new_title, 33, 36)
    ws_maxsp_this_min_helper <- substr(data_tmp$new_title, 37, 40)

    water_this_min_rat <- substr(data_tmp$new_title, 41, 44)
    water_this_hour_rat <- substr(data_tmp$new_title, 45, 48)
    water_this_min_rat1 <- substr(data_tmp$new_title, 49, 52)
    water_this_hour_rat1 <- substr(data_tmp$new_title, 53, 56)
    water_this_min_by_weight <- substr(data_tmp$new_title, 57, 60)
    water_this_hour_by_weight <- substr(data_tmp$new_title, 61, 64)

    air_temp_by_box <- substr(data_tmp$new_title, 65, 68)
    sp_ventilation <- substr(data_tmp$new_title, 69, 72)
    air_temp_ventilation <- substr(data_tmp$new_title, 73, 76)
    wet_bulb_temp <- substr(data_tmp$new_title, 77, 80)
    value_humicap <- substr(data_tmp$new_title, 81, 84)
    relative_humidity <- substr(data_tmp$new_title, 87, 88)

    water_vapor_pressure <- substr(data_tmp$new_title, 89, 92)
    dew_temp <- substr(data_tmp$new_title, 93, 96)
    station_pressure <- substr(data_tmp$new_title, 97, 101)
    grass_temp <- substr(data_tmp$new_title, 102, 105)
    ground_temp_pt <- substr(data_tmp$new_title, 106, 109)
    ground_temp_infrared <- substr(data_tmp$new_title, 110, 113)

    ground_tem_5cm <- substr(data_tmp$new_title, 114, 117)
    ground_tem_10cm <- substr(data_tmp$new_title, 118, 121)
    ground_tem_15cm <- substr(data_tmp$new_title, 122, 125)
    ground_tem_20cm <- substr(data_tmp$new_title, 126, 129)
    ground_tem_40cm <- substr(data_tmp$new_title, 130, 133)
    ground_tem_80cm <- substr(data_tmp$new_title, 134, 137)
    ground_tem_160cm <- substr(data_tmp$new_title, 138, 141)
    ground_tem_320cm <- substr(data_tmp$new_title, 142, 145)

    water_lever_evaporation_this_min <- substr(data_tmp$new_title, 146, 149)
    water_evaporation_this_hour <- substr(data_tmp$new_title, 150, 153)

    visibility_avg_this_min <- substr(data_tmp$new_title, 154, 158)
    visibility_avg_10_mins <- substr(data_tmp$new_title, 159, 163)
    cloud_height <- substr(data_tmp$new_title, 164, 168)
    total_cloud_amount <- substr(data_tmp$new_title, 169, 172)
    low_cloud_amount <- substr(data_tmp$new_title, 173, 176)

    code_weather <- substr(data_tmp$new_title, 177, 188)
    snow_depth <- substr(data_tmp$new_title, 189, 192)
    freezing_rain <- substr(data_tmp$new_title, 193, 196)
    ice_accretion_on_wires <- substr(data_tmp$new_title, 197, 200)
    frozen_soil_depth <- substr(data_tmp$new_title, 201, 204)
    frequency_lightning <- substr(data_tmp$new_title, 205, 208)
    sign_of_data_quality <- substr(data_tmp$new_title, 209, 256)
    crlf <- substr(data_tmp$new_title, 257, 258)

    
    new_data <- data.frame(time_now, 
                           wd_avg_2mins, 
                           ws_avg_2mins, 
                           wd_avg_10mins, 
                           ws_avg_10mins,
                           wd_maxsp_this_min, 
                           ws_maxsp_this_min, 
                           ws_avg_2_mins_helper,
                           ws_avg_10_mins_helper, 
                           ws_maxsp_this_min_helper,
                           water_this_min_rat,
                           water_this_hour_rat,
                           water_this_min_rat1,
                           water_this_hour_rat1,
                           water_this_min_by_weight,
                           water_this_hour_by_weight,
                           air_temp_by_box,
                           sp_ventilation,
                           air_temp_ventilation,
                           wet_bulb_temp,
                           value_humicap,
                           relative_humidity,
                           water_vapor_pressure,
                           dew_temp,
                           station_pressure,
                           grass_temp,
                           ground_temp_pt,
                           ground_temp_infrared,
                           ground_tem_5cm,
                           ground_tem_10cm,
                           ground_tem_15cm,
                           ground_tem_20cm,
                           ground_tem_40cm,
                           ground_tem_80cm,
                           ground_tem_160cm,
                           ground_tem_320cm,
                           water_lever_evaporation_this_min,
                           water_evaporation_this_hour,
                           visibility_avg_this_min,
                           visibility_avg_10_mins,
                           cloud_height,
                           total_cloud_amount,
                           low_cloud_amount,
                           code_weather,
                           snow_depth,
                           freezing_rain,
                           ice_accretion_on_wires,
                           frozen_soil_depth,
                           frequency_lightning,
                           sign_of_data_quality,
                           crlf)

    write.csv(new_data, file =new_name, row.names = F)


}


    
