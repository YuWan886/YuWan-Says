
$data modify storage yws:event temp.guess."$(UUID)" set value {up_num:0,text:1,UUID:$(UUID),answer:"",count:2}
# 抽取 up_num
$execute store result storage yws:event temp.guess."$(UUID)".up_num int 1 run random value 0..3
$function yws:game/event/pool/b/18/dialog/select_up_1 with storage yws:event temp.guess."$(UUID)"

# 定义描述词数量
data modify storage yws:event guessup set value \
[\
    {\  
        "up_num": 0,\ 
        "text": [\
            "实力人",\
            "AI游戏大玩家"\
        ],\
        "count": 2,\
        "answer": "籽岷"\
    },\
    {\
        "up_num": 1,\ 
        "text": [\
            "数据包作者",\
            "一条"\
        ],\
        "count": 2,\
        "answer": "一条鱼丸"\
    },\
    {\
        "up_num": 2,\
        "text": [\
            "用中文的日本吸血鬼",\
            "qiqi逗小孩"\
        ],\
        "count": 2,\
        "answer": "真红莉爱"\
    },\
    {\
        "up_num": 3,\
        "text": [\
            "红皮耗子",\
            "世界霸主凯哥",\
            "《啊？40.0》"\
        ],\
        "count": 2,\
        "answer": "qiqi"\
    }\
]