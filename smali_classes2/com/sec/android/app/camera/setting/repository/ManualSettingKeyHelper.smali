.class Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper;
.super Ljava/lang/Object;
.source "ManualSettingKeyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper$ModePairKey;
    }
.end annotation


# static fields
.field static final BACK_NORMAL:I = 0x4

.field static final BACK_SECOND_TELE:I = 0x1

.field static final BACK_TELE:I = 0x2

.field static final BACK_WIDE:I = 0x3

.field static final FRONT_NORMAL:I

.field private static final PRO_KEY_MAP:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper$ModePairKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mManualSavingPrefKeyListMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v1, Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper$1;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper$1;-><init>(Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper;->mManualSavingPrefKeyListMap:Ljava/util/EnumMap;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper$2;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper$2;-><init>(Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper;->PRO_KEY_MAP:Ljava/util/EnumMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getManualSavingPrefKeyListMap()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper;->mManualSavingPrefKeyListMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method static getOverriddenProKeyList(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper$ModePairKey;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/camera/setting/repository/ManualSettingKeyHelper;->PRO_KEY_MAP:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
