.class public Lk4/w;
.super Lk4/u;
.source "RecognizerProvider_OneUI41.java"


# direct methods
.method public constructor <init>(Lk4/t;Lk4/y;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk4/u;-><init>(Lk4/t;Lk4/y;)V

    return-void
.end method


# virtual methods
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
    new-instance v0, Lk4/f0;

    iget-object v1, p0, Lk4/u;->a:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;

    invoke-direct {v0, v1, p1}, Lk4/f0;-><init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lk4/t;)V

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

    const-string v0, "RecognizerProvider_OneUI41"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lk4/u;->c:Lk4/b;

    :goto_0
    return-void
.end method

.method protected l(Z)Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->ASSETS:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;->ONEUI41:Lcom/samsung/android/sdk/pen/ocr/SpenOcrModelLoaderFactory$MODEL_LOADER;

    :goto_0
    return-object p0
.end method
