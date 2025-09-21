.class public Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;
.super Landroid/os/AsyncTask;
.source "VisionTextTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ll3/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VisionTextTask"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCompleteListener:Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;

.field private mOcrResult:Ll3/a;

.field private mVisionText:Lj3/c;


# direct methods
.method constructor <init>(Lj3/c;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mOcrResult:Ll3/a;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mVisionText:Lj3/c;

    .line 4
    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static synthetic a(Ll3/a;Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->lambda$onPostExecute$0(Ll3/a;Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;)V

    return-void
.end method

.method private static synthetic lambda$onPostExecute$0(Ll3/a;Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;->onComplete(Ll3/a;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->doInBackground([Ljava/lang/Void;)Ll3/a;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ll3/a;
    .locals 4

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mBitmap:Landroid/graphics/Bitmap;

    const-string v0, "VisionTextTask"

    if-nez p1, :cond_0

    const-string p0, "Bitmap is null."

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mVisionText:Lj3/c;

    invoke-interface {v1}, Lj3/c;->b()Lj3/a;

    move-result-object v1

    .line 6
    sget-object v2, Ll3/h;->c:Ll3/h;

    invoke-virtual {v2}, Ll3/h;->h()I

    move-result v2

    invoke-interface {v1, v2}, Lj3/a;->c(I)V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lj3/a;->a(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Texts were detected on the image"

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, p1}, Lj3/a;->b(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Ll3/a;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mOcrResult:Ll3/a;

    .line 10
    invoke-virtual {p1}, Ll3/a;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "OcrResult succeed"

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "Block list size is 0"

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "Texts were not detected on the image"

    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :goto_0
    invoke-interface {v1}, Lj3/a;->release()V

    .line 15
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mOcrResult:Ll3/a;

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ll3/a;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->onPostExecute(Ll3/a;)V

    return-void
.end method

.method protected onPostExecute(Ll3/a;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mCompleteListener:Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/cropper/controller/b;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/cropper/controller/b;-><init>(Ll3/a;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method setCompleteListener(Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->mCompleteListener:Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;

    return-void
.end method
