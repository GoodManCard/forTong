#!/usr/bin/env python 
# -*- coding: utf-8 -*-

import numpy as np 
import pandas as pd 
import matplotlib.pyplot as plt 
from tqdm import tqdm
import datetime
import os

data_list = os.listdir("new_data")
if not os.path.exists("clean_data"):
    os.mkdir("clean_data")

features = ["time_now", "wd_avg_2mins", "ws_avg_2mins", "wd_avg_10mins", "ws_avg_10mins", 
            "wd_maxsp_this_min", "ws_maxsp_this_min", "air_temp_by_box", "relative_humidity", 
            "water_vapor_pressure", "dew_temp", "station_pressure", "ground_temp_pt", "ground_tem_5cm", 
            "ground_tem_10cm", "ground_tem_15cm", "ground_tem_20cm"]

def toDateTime(x):
    '''type(x) is str'''
    tmp_date_time = datetime.datetime.strptime(str(x), "%Y-%m-%d %H:%M")
    return tmp_date_time


for i in tqdm(range(len(data_list))):
    data_tmp = pd.read_csv(os.path.join("new_data", data_list[i]))
    print("This is {}".format(data_list[i]))

    # correct the col---"time_now"
    date_now_str = data_list[i].split(".")[0].split("_")[-1]
    date_now_str = date_now_str[0:4]+"-"+date_now_str[4:6]+"-"+date_now_str[6:]
    
    delta_date = datetime.timedelta(days=1)
    lower_time = toDateTime(date_now_str+" "+"20:00")

    data_tmp["time_now"] = data_tmp["time_now"].apply(lambda x:toDateTime(x)-delta_date if x[-2:] != "--" and toDateTime(x) > lower_time else x)
    
    # new dataframe
    new_data_tmp = pd.DataFrame()
    for col in features:
        new_data_tmp[col] = data_tmp[col]
    
    new_data_tmp.to_csv(os.path.join("clean_data", data_list[i]), header=True, sep=",", index=False)
    print("WELL DONE!!! The data: {} was OK!\n".format(data_list[i]))

print("OOOOOOOOOOOK!!!!!!")




