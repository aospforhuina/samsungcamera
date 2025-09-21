.class public Lcom/samsung/android/ocr/MOCROptions;
.super Ljava/lang/Object;
.source "MOCROptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ocr/MOCROptions$Builder;
    }
.end annotation


# instance fields
.field private final disableLineProcessing:Z

.field private final forceLang:Z

.field private final getCharResult:Z

.field private final imageType:I

.field private final languageMode:I

.field private final numThreads:I

.field private final optimizeCpu:Z

.field private final runInverted:Z

.field private final useBeamSearch:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/ocr/MOCROptions$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$000(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->useBeamSearch:Z

    .line 4
    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$100(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->disableLineProcessing:Z

    .line 5
    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$200(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->optimizeCpu:Z

    .line 6
    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$300(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->getCharResult:Z

    .line 7
    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$400(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->forceLang:Z

    .line 8
    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$500(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->runInverted:Z

    .line 9
    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$600(Lcom/samsung/android/ocr/MOCROptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ocr/MOCROptions;->numThreads:I

    .line 10
    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$700(Lcom/samsung/android/ocr/MOCROptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ocr/MOCROptions;->imageType:I

    .line 11
    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$800(Lcom/samsung/android/ocr/MOCROptions$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/ocr/MOCROptions;->languageMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/ocr/MOCROptions$Builder;Lcom/samsung/android/ocr/MOCROptions$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/ocr/MOCROptions;-><init>(Lcom/samsung/android/ocr/MOCROptions$Builder;)V

    return-void
.end method


# virtual methods
.method public getImageType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/ocr/MOCROptions;->imageType:I

    return p0
.end method

.method public getLanguageMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/ocr/MOCROptions;->languageMode:I

    return p0
.end method

.method public getNumThreads()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/ocr/MOCROptions;->numThreads:I

    return p0
.end method

.method public isDisableLineProcessing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions;->disableLineProcessing:Z

    return p0
.end method

.method public isForceLang()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions;->forceLang:Z

    return p0
.end method

.method public isGetCharResult()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions;->getCharResult:Z

    return p0
.end method

.method public isOptimizeCpu()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions;->optimizeCpu:Z

    return p0
.end method

.method public isRunInverted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions;->runInverted:Z

    return p0
.end method

.method public isUseBeamSearch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions;->useBeamSearch:Z

    return p0
.end method
