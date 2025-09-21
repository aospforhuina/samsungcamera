.class Lcom/samsung/android/camera/core2/maker/HdrPhotoMaker;
.super Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;
.source "HdrPhotoMaker.java"


# static fields
.field private static final U1:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "HdrPhotoMaker"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/HdrPhotoMaker;->U1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public C()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method protected q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/HdrPhotoMaker;->U1:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object p0
.end method
