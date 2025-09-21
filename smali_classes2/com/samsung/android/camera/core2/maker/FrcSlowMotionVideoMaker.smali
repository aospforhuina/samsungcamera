.class Lcom/samsung/android/camera/core2/maker/FrcSlowMotionVideoMaker;
.super Lcom/samsung/android/camera/core2/maker/SlowMotionVideoMakerBase;
.source "FrcSlowMotionVideoMaker.java"


# static fields
.field private static final X0:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "FrcSlowMotionVideoMaker"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/FrcSlowMotionVideoMaker;->X0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SlowMotionVideoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public C()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method protected q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/FrcSlowMotionVideoMaker;->X0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method
