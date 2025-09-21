.class final enum Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;
.super Ljava/lang/Enum;
.source "CreateMyFilterInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CreateMyFilterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

.field public static final enum NORMAL:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

.field public static final enum RETRY:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;->NORMAL:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    const-string v3, "RETRY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;->RETRY:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;->$VALUES:[Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;->$VALUES:[Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    return-object v0
.end method
