.class Lcom/samsung/android/camera/core2/maker/BokehVideoMaker;
.super Lcom/samsung/android/camera/core2/maker/VideoMakerBase;
.source "BokehVideoMaker.java"


# static fields
.field private static final U0:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "BokehVideoMaker"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/BokehVideoMaker;->U0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/16 p1, 0x23

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->o0:I

    const/16 p1, 0x100

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->q0:I

    return-void
.end method


# virtual methods
.method public C()I
    .locals 0

    const/16 p0, 0x1c

    return p0
.end method

.method protected q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/BokehVideoMaker;->U0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method
