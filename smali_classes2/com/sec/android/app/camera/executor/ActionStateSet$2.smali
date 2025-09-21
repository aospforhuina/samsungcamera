.class Lcom/sec/android/app/camera/executor/ActionStateSet$2;
.super Ljava/util/EnumMap;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/sec/android/app/camera/interfaces/Resolution;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_8K:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_8K_24fps:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_UHD:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_UHD_60FPS:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_UHD_24FPS:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_QHD:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2560X1440_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_QHD_60FPS:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_120FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD_120FPS:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD_60FPS:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD_24FPS:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_16x9_HD:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X3296:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_21x9_8K:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X3296_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_21x9_8K_24fps:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X1644:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_21x9_UHD:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X1644_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_21x9_UHD_60FPS:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X1644_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_21x9_UHD_24FPS:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X824:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X824_120FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD_120FPS:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X824_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD_60FPS:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X824_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD_24FPS:Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$RatioId;->getRatioId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
