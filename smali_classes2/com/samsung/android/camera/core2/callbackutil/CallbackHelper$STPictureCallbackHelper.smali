.class public Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;
.super Ljava/lang/Object;
.source "CallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STPictureCallbackHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->g(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V

    return-void
.end method

.method public static synthetic b(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->i(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V

    return-void
.end method

.method public static synthetic c(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->f(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->h(Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->j(Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V

    return-void
.end method

.method private static synthetic f(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/STPictureCallback;->onError(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic g(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/STPictureCallback;->onPictureSequenceCompleted(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic h(Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/camera/core2/callback/STPictureCallback;->onPictureTakeCompleted(Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic i(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/STPictureCallback;->onPictureTakenWithError(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic j(Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/STPictureCallback;->onShutter(Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static k(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "STPictureCallback onError - sTPictureCallback(%s), error %d, camDevice %s"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/camera/core2/callbackutil/u;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/camera/core2/callbackutil/u;-><init>(ILcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static l(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;IJLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v0, p4

    const/4 p3, 0x3

    aput-object p5, v0, p3

    const-string p3, "STPictureCallbackHelper onPictureSequenceCompleted - sTPictureCallback(%s), sequenceId %d, frameNumber %d, camDevice %s"

    .line 2
    invoke-static {p0, p3, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/camera/core2/callbackutil/s;

    invoke-direct {p1, p2, p5}, Lcom/samsung/android/camera/core2/callbackutil/s;-><init>(ILcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "STPictureCallbackHelper onPictureTakeCompleted - sTPictureCallback(%s), camDevice %s"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/camera/core2/callbackutil/v;

    invoke-direct {p1, p2}, Lcom/samsung/android/camera/core2/callbackutil/v;-><init>(Lcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v4, 0x2

    aput-object p4, v1, v4

    const-string v5, "STPictureCallbackHelper onPictureTaken - sTPictureCallback(%s), pictureData %s, camDevice %s"

    .line 2
    invoke-static {p0, v5, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v5

    const-string v6, "ImageInfo size is null"

    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v5

    const-string v6, "ImageInfo CaptureResult is null"

    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v5, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v6

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;-><init>(Lcom/samsung/android/camera/core2/util/ImgFormat;Landroid/util/Size;Landroid/hardware/camera2/CaptureResult;)V

    sget-object v6, Lcom/samsung/android/camera/core2/ExtraBundle;->r:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    .line 8
    invoke-virtual {p3, v6}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v5, p3}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->h(I)Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->f()Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    move-result-object p3

    .line 9
    sget-object v5, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$1;->a:[I

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v2, :cond_1

    if-eq v5, v4, :cond_0

    if-eq v5, v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "STPictureCallbackHelper onPictureTaken - unsupported pictureFormat %s"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper;->a(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {p1, p0, p3, p4}, Lcom/samsung/android/camera/core2/callback/STPictureCallback;->onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper;->b(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {p1, p0, p3, p4}, Lcom/samsung/android/camera/core2/callback/STPictureCallback;->onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "STPictureCallbackHelper onPictureTakenWithError - sTPictureCallback(%s), error %d, camDevice %s"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/camera/core2/callbackutil/t;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/camera/core2/callbackutil/t;-><init>(ILcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string v1, "STPictureCallbackHelper onShutter - sTPictureCallback(%s), camDevice %s"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/camera/core2/callbackutil/w;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/camera/core2/callbackutil/w;-><init>(Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static q(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v4, 0x2

    aput-object p4, v1, v4

    const-string v5, "STPictureCallbackHelper onUnProcessedPictureTaken - sTPictureCallback(%s), pictureData %s, camDevice %s"

    .line 2
    invoke-static {p0, v5, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v5

    const-string v6, "ImageInfo size is null"

    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v5

    const-string v6, "ImageInfo CaptureResult is null"

    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v5, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v6

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v7

    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;-><init>(Lcom/samsung/android/camera/core2/util/ImgFormat;Landroid/util/Size;Landroid/hardware/camera2/CaptureResult;)V

    sget-object v6, Lcom/samsung/android/camera/core2/ExtraBundle;->r:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    .line 9
    invoke-virtual {p3, v6}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v5, p3}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->h(I)Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;

    move-result-object p3

    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->l()Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->g(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->f()Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    move-result-object p3

    .line 11
    sget-object v5, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$1;->a:[I

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v2, :cond_1

    if-eq v5, v4, :cond_0

    if-eq v5, v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "STPictureCallbackHelper onUnProcessedPictureTaken - unsupported pictureFormat %s"

    .line 13
    invoke-static {p0, p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper;->a(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {p1, p0, p3, p4}, Lcom/samsung/android/camera/core2/callback/STPictureCallback;->onUnProcessedPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper;->b(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {p1, p0, p3, p4}, Lcom/samsung/android/camera/core2/callback/STPictureCallback;->onUnProcessedPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    :cond_2
    :goto_0
    return-void
.end method
