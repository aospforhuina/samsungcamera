.class Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;
.super Ljava/lang/Object;
.source "PictureCallbackManager.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/RawPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/PictureCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawPictureCallbackManager"
.end annotation


# instance fields
.field private mIsRawPictureCallbackReceived:Z

.field private mRawPictureData:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsRawPictureCallbackReceived:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/l6;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->getRawPictureData()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->isRawPictureCallbackReceived()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->reset()V

    return-void
.end method

.method private getRawPictureData()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mRawPictureData:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private isRawPictureCallbackReceived()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsRawPictureCallbackReceived:Z

    return p0
.end method

.method private processRawWithJpegImage(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->a3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->x(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->r(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->RAW:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->v(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    goto :goto_0

    :cond_0
    const-string v0, "PictureCallbackManager"

    const-string v1, "RawPictureCallback.onPictureTaken : jpeg picture callback was not called yet on raw capture sequence."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mRawPictureData:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->r(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->RAW:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->x(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->s(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->t(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->b()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->w(Lcom/sec/android/app/camera/engine/PictureCallbackManager;I)Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->t(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->y(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->v(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsRawPictureCallbackReceived:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mRawPictureData:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->r(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object p2

    sget-object p3, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v0, "PictureCallbackManager"

    if-eq p2, p3, :cond_0

    const-string p0, "RawPictureCallback.onPictureTaken : Returned because current capture state is not CAPTURING."

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p2, "RawPictureCallback.onPictureTaken"

    .line 3
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsRawPictureCallbackReceived:Z

    .line 5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->processRawWithJpegImage(Ljava/nio/ByteBuffer;)V

    return-void
.end method
