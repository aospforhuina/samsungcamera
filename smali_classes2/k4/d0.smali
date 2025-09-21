.class public Lk4/d0;
.super Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;
.source "SOCRecognizerBase.java"

# interfaces
.implements Lk4/b;


# instance fields
.field protected a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;

.field protected d:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lk4/t;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk4/d0;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lk4/d0;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lk4/d0;->c:Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;

    .line 5
    iput-object v0, p0, Lk4/d0;->d:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    .line 6
    iget-object v0, p2, Lk4/t;->c:Lk4/i;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->from(Lk4/i;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLanguage;->toLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk4/d0;->b:Ljava/lang/String;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-object v2, p0, Lk4/d0;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;->loadLanguageDB(Ljava/lang/String;)Z

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Time of Loading DB: %d ms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOCRecognizerBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;->createRecognizer()Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    move-result-object v0

    iput-object v0, p0, Lk4/d0;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    .line 12
    iget-object p2, p2, Lk4/t;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lk4/d0;->d(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;)V

    const-string p0, "SpenRecognizer(SOCRecognizerBase) is created!"

    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Z
    .locals 0

    const-string p0, "SOCRecognizerBase"

    const-string p1, "detectText(bitmap) is ture in case of being called when isHandwritten() is true. "

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public b(Landroid/graphics/Bitmap;Lk4/j;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk4/d0;->g(Landroid/graphics/Bitmap;Lk4/j;)Z

    move-result p0

    return p0
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk4/d0;->e()V

    .line 2
    invoke-virtual {p0}, Lk4/d0;->close()V

    const-string p0, "SOCRecognizerBase"

    const-string v0, "SOCRecognizerBase destroyed"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/d0;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lk4/d0;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;->close()V

    return-void
.end method

.method protected d(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;)V

    iput-object v0, p0, Lk4/d0;->d:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    const-string p0, "SOCRecognizerBase"

    const-string p1, "mMoireDetector is created!"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/d0;->d:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;->close()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk4/d0;->d:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    const-string p0, "SOCRecognizerBase"

    const-string v0, "mMoireDetector is destroyed!"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected f(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/d0;->d:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;->detectMoire(Landroid/graphics/Bitmap;)Z

    move-result p1

    const-string v0, "deMoire"

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lk4/d0;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    const-string/jumbo p1, "true"

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;->setConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lk4/d0;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    const-string p1, "false"

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;->setConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;->finalize()V

    .line 2
    invoke-virtual {p0}, Lk4/d0;->close()V

    return-void
.end method

.method protected g(Landroid/graphics/Bitmap;Lk4/j;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;

    iget-object v1, p0, Lk4/d0;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lk4/d0;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    invoke-interface {v1, p1, v0, p0}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;->recognize(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/ocr/SpenRecogConfig;Lcom/samsung/android/sdk/pen/ocr/SpenOcrRecognitionListener;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_Success:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    if-eq p1, v0, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SpenRecognizer::recognize() Failed! ErrorCode : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SOCRecognizerBase"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    iget-object p0, p0, Lk4/d0;->c:Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;

    invoke-static {p0, p2}, Lk4/b0;->e(Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;Lk4/j;)Lk4/j;

    .line 6
    invoke-virtual {p2}, Lk4/j;->o()Z

    const/4 p0, 0x1

    return p0
.end method

.method public onPageRecognitionCompleted(Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;)V
    .locals 2

    const-string v0, "SOCRecognizerBase"

    if-nez p1, :cond_0

    const-string p0, "onPageRecognitionCompleted() Failed! pageData == null"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "onPageRecognitionCompleted() callback"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lk4/d0;->c:Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;

    return-void
.end method

.method public onPageRecognitionStarted()V
    .locals 1

    const-string p0, "SOCRecognizerBase"

    const-string v0, "onPageRecognitionStarted() callback"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextBlockDetected(Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;)V
    .locals 2

    const-string p0, "SOCRecognizerBase"

    if-nez p1, :cond_0

    const-string p1, "onTextBlockDetected() Failed! textBlock == null"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTextBlockDetected() textBlock rect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->getRectInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextLineDetected(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;)V
    .locals 3

    const-string p0, "SOCRecognizerBase"

    if-nez p1, :cond_0

    const-string p1, "onTextLineDetected() Failed! lineData == null"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTextLineDetected() lineData uid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->getUID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextLineRecognized(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;)V
    .locals 3

    const-string p0, "SOCRecognizerBase"

    if-nez p1, :cond_0

    const-string p1, "onTextLineRecognized() Failed! lineData == null"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTextLineRecognized() lineData uid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->getUID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
