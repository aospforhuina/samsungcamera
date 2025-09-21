.class public Lk4/u;
.super Ljava/lang/Object;
.source "RecognizerProvider.java"


# instance fields
.field protected a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

.field protected b:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

.field protected c:Lk4/b;

.field protected d:Lk4/b;

.field protected e:Lk4/n;

.field protected final f:Lk4/a;


# direct methods
.method public constructor <init>(Lk4/t;Lk4/y;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk4/u;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    .line 3
    iput-object v0, p0, Lk4/u;->b:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    .line 4
    iput-object v0, p0, Lk4/u;->c:Lk4/b;

    .line 5
    iput-object v0, p0, Lk4/u;->d:Lk4/b;

    .line 6
    sget-object v0, Lk4/n;->b:Lk4/n;

    iput-object v0, p0, Lk4/u;->e:Lk4/n;

    .line 7
    new-instance v0, Lk4/a;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lk4/a;-><init>(I)V

    iput-object v0, p0, Lk4/u;->f:Lk4/a;

    .line 8
    iget-object v0, p1, Lk4/t;->b:Lk4/n;

    iput-object v0, p0, Lk4/u;->e:Lk4/n;

    .line 9
    iget-boolean v0, p2, Lk4/y;->b:Z

    const-string v1, "RecognizerProvider"

    if-eqz v0, :cond_0

    const-string v0, "SOCR is supported"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;

    iget-object v2, p1, Lk4/t;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lk4/u;->l(Z)Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;)V

    iput-object v0, p0, Lk4/u;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    .line 12
    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;->createTypeClassifier()Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    move-result-object v0

    iput-object v0, p0, Lk4/u;->b:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    .line 13
    invoke-virtual {p0, p1}, Lk4/u;->f(Lk4/t;)V

    goto :goto_0

    :cond_0
    const-string v0, "SOCR is not supported"

    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :goto_0
    iget-boolean p2, p2, Lk4/y;->a:Z

    if-eqz p2, :cond_1

    const-string p2, "MOCR is supported"

    .line 16
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p1, Lk4/t;->c:Lk4/i;

    invoke-direct {p0, p1}, Lk4/u;->e(Lk4/i;)V

    goto :goto_1

    :cond_1
    const-string p0, "MOCR is not supported"

    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk4/u;->b:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lk4/u;->b:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    .line 4
    iget-object v1, p0, Lk4/u;->c:Lk4/b;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lk4/b;->c()V

    .line 6
    :cond_1
    iput-object v0, p0, Lk4/u;->c:Lk4/b;

    .line 7
    iget-object v1, p0, Lk4/u;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;->close()V

    .line 9
    :cond_2
    iput-object v0, p0, Lk4/u;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/u;->d:Lk4/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lk4/b;->c()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lk4/u;->d:Lk4/b;

    return-void
.end method

.method private e(Lk4/i;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lk4/e;->f(Lk4/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lk4/e;

    invoke-direct {v0, p1}, Lk4/e;-><init>(Lk4/i;)V

    iput-object v0, p0, Lk4/u;->d:Lk4/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "MOCRecognizer does not support language(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecognizerProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lk4/u;->d:Lk4/b;

    :goto_0
    return-void
.end method

.method private h(Lk4/j$f;)Lk4/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lk4/u;->c:Lk4/b;

    const-string v1, "RecognizerProvider"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select recognizer by user selected type: OCRType ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk4/u;->e:Lk4/n;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Lk4/u;->k(ZLk4/j$f;)Lk4/b;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User selected ocr type is not supported: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk4/u;->e:Lk4/n;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private i(Lk4/j$f;)Lk4/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lk4/u;->d:Lk4/b;

    const-string v1, "RecognizerProvider"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select recognizer by user selected type: OCRType ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk4/u;->e:Lk4/n;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Lk4/u;->k(ZLk4/j$f;)Lk4/b;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User selected ocr type is not supported: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk4/u;->e:Lk4/n;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/u;->d:Lk4/b;

    if-nez v0, :cond_1

    iget-object p0, p0, Lk4/u;->c:Lk4/b;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lk4/h;

    const-string v0, "Any recognizer has not been created!"

    invoke-direct {p0, v0}, Lk4/h;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "RecognizerProvider"

    const-string v1, "RecognizerProvider close()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lk4/u;->d()V

    .line 3
    invoke-direct {p0}, Lk4/u;->c()V

    return-void
.end method

.method protected f(Lk4/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk4/u;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    iget-object v1, p1, Lk4/t;->c:Lk4/i;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->from(Lk4/i;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;->isSupportedLanguage(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lk4/c0;

    iget-object v1, p0, Lk4/u;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    invoke-direct {v0, v1, p1}, Lk4/c0;-><init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lk4/t;)V

    iput-object v0, p0, Lk4/u;->c:Lk4/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iget-object p1, p1, Lk4/t;->c:Lk4/i;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "SOCRecognizer does not support language(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecognizerProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lk4/u;->c:Lk4/b;

    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lk4/u;->b()V

    return-void
.end method

.method protected g(Landroid/graphics/Bitmap;Lk4/j$f;)Lk4/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lk4/u;->d:Lk4/b;

    const-string v1, "RecognizerProvider"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lk4/u;->c:Lk4/b;

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, p0, Lk4/u;->b:Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;

    const-string v2, "Type classifier is not ready"

    .line 3
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenITypeClassifier;->isHandwrittenImage(Landroid/graphics/Bitmap;)Z

    move-result p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select recognizer by type classification: isHandwritten="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0, p1, p2}, Lk4/u;->k(ZLk4/j$f;)Lk4/b;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "Select recognizer for Printed image"

    .line 7
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p2}, Lk4/u;->k(ZLk4/j$f;)Lk4/b;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "Select recognizer for Handwritten image"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1, p2}, Lk4/u;->k(ZLk4/j$f;)Lk4/b;

    move-result-object p0

    return-object p0
.end method

.method public j(Landroid/graphics/Bitmap;Lk4/j$f;)Lk4/b;
    .locals 2

    .line 1
    sget-object v0, Lk4/u$a;->a:[I

    iget-object v1, p0, Lk4/u;->e:Lk4/n;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User selected ocr type is not supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk4/u;->e:Lk4/n;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecognizerProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lk4/u;->h(Lk4/j$f;)Lk4/b;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-direct {p0, p2}, Lk4/u;->i(Lk4/j$f;)Lk4/b;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p0, p1, p2}, Lk4/u;->g(Landroid/graphics/Bitmap;Lk4/j$f;)Lk4/b;

    move-result-object p0

    return-object p0
.end method

.method protected k(ZLk4/j$f;)Lk4/b;
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Lk4/j$f;->d(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lk4/u;->c:Lk4/b;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lk4/u;->d:Lk4/b;

    :goto_0
    return-object p0
.end method

.method protected l(Z)Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->ASSETS:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->PROVIDER_LATEST:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    :goto_0
    return-object p0
.end method
