## **简单说明** ##

`./aws_mins/..` 这是一份自动站的观测记录数据，等宽；`prepare_data.R` 用来对原始数据进行分列。

`./new_data/..` 中是分列后的数据，其中每天的观测数据是单个文本文件，记录从前一天晚上的 `20:00` 开始，每分钟记录一次，至当日 `20:00` 。

数据中某些字段记录为空，可挑选有记录数据的字段来做处理。

#### ***原始数据示例*** ###

```shell

58463 2015   01   011213000E305300N   46   56  105  10531-------1111-1-111-1111111111-------V1.00---------------------------------------------------------------------------------------------------------------------------------------------------------------
2001   1  43 351  34   5  65------------00000000--------00000000  50----------------  49  43 -4810308----  21----  55  71  81  84-------------------------------------------------------------------------------000000NNN00NN000NNNN0000N0N0011NNNNNNNNNNNNNNNNN
2002 355  46 352  35 345  69------------00000000--------00000000  50----------------  49  43 -4810309----  21----  55  71  81  84-------------------------------------------------------------------------------000000NNN00NN000NNNN0000N0N0011NNNNNNNNNNNNNNNNN
2003 341  45 351  36 337  59------------00000000--------00000000  50----------------  49  43 -4810309----  22----  55  71  81  84-------------------------------------------------------------------------------000000NNN00NN000NNNN0000N0N0011NNNNNNNNNNNNNNNNN
2004 341  41 350  36 344  55------------00000000--------00000000  50----------------  49  43 -4810309----  23----  55  71  81  84-------------------------------------------------------------------------------000000NNN00NN000NNNN0000N0N0011NNNNNNNNNNNNNNNNN
2005 346  41 350  37 347  53------------00000000--------00000000  50----------------  49  43 -4810309----  23----  55  71  81  84-------------------------------------------------------------------------------000000NNN00NN000NNNN0000N0N0011NNNNNNNNNNNNNNNNN
2006 342  50 348  41 337  84------------00000000--------00000000  50----------------  49  43 -4810309----  23----  55  71  81  84-------------------------------------------------------------------------------000000NNN00NN000NNNN0000N0N0011NNNNNNNNNNNNNNNNN
2007 338  52 348  43 339  61------------00000000--------00000000  51----------------  49  43 -4710309----  24----  55  71  81  84-------------------------------------------------------------------------------000000NNN00NN000NNNN0000N0N0011NNNNNNNNNNNNNNNNN
2008 338  44 346  44 338  58------------00000000--------00000000  50----------------  49  43 -4810308----  24----  55  70  81  84-------------------------------------------------------------------------------000000NNN00NN000NNNN0000N0N0011NNNNNNNNNNNNNNNNN
```

### **使用说明** ###
```sh
git clone https://github.com/GoodManCard/forTong.git
cd forTong
tree 
.
├── aws_mins                 # data path of origin
├── clean_data               # data path of cleaned by script clean_data.py
├── clean_data_correct       # data path of corrected 
├── new_data                 # data path of prepared by script prepare_data.R
├── clean_data.py
├── prepare_data.R
└── README.md 

```

### **TODO** ###

Emm...  `GOOD LUCK!!!`
