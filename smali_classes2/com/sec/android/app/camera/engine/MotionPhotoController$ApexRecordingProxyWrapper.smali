.class Lcom/sec/android/app/camera/engine/MotionPhotoController$ApexRecordingProxyWrapper;
.super Ljava/lang/Object;
.source "MotionPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/MotionPhotoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApexRecordingProxyWrapper"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApexRecordingProxyWrapper"


# instance fields
.field private mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    invoke-direct {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController$ApexRecordingProxyWrapper;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    return-void
.end method

.method static newInstance(I)Lcom/sec/android/app/camera/engine/MotionPhotoController$ApexRecordingProxyWrapper;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/MotionPhotoController$ApexRecordingProxyWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController$ApexRecordingProxyWrapper;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method queueBuffer(Ljava/nio/ByteBuffer;IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController$ApexRecordingProxyWrapper;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->queueBuffer(Ljava/nio/ByteBuffer;IJ)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ApexRecordingProxyWrapper"

    const-string p1, "queueBuffer : result is false"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController$ApexRecordingProxyWrapper;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->release()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController$ApexRecordingProxyWrapper;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    return-void
.end method
