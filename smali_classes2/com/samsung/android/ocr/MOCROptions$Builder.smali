.class public Lcom/samsung/android/ocr/MOCROptions$Builder;
.super Ljava/lang/Object;
.source "MOCROptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ocr/MOCROptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private disableLineProcessing:Z

.field private forceLang:Z

.field private getCharResult:Z

.field private imageType:I

.field private languageMode:I

.field private numThreads:I

.field private optimizeCpu:Z

.field private runInverted:Z

.field private useBeamSearch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->useBeamSearch:Z

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->disableLineProcessing:Z

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->optimizeCpu:Z

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->getCharResult:Z

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->forceLang:Z

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->runInverted:Z

    const/4 v0, 0x4

    .line 8
    iput v0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->numThreads:I

    .line 9
    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRLanguageMode;->Auto:Lcom/samsung/android/ocr/MOCRConstants$MOCRLanguageMode;

    invoke-virtual {v0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRLanguageMode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->languageMode:I

    .line 10
    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRImageType;->Generic:Lcom/samsung/android/ocr/MOCRConstants$MOCRImageType;

    invoke-virtual {v0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRImageType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->imageType:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->useBeamSearch:Z

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->disableLineProcessing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->optimizeCpu:Z

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->getCharResult:Z

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->forceLang:Z

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->runInverted:Z

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/ocr/MOCROptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->numThreads:I

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/ocr/MOCROptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->imageType:I

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/ocr/MOCROptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->languageMode:I

    return p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/ocr/MOCROptions;
    .locals 2

    new-instance v0, Lcom/samsung/android/ocr/MOCROptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/ocr/MOCROptions;-><init>(Lcom/samsung/android/ocr/MOCROptions$Builder;Lcom/samsung/android/ocr/MOCROptions$1;)V

    return-object v0
.end method

.method public setDisableLineProcessing(Z)Lcom/samsung/android/ocr/MOCROptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->disableLineProcessing:Z

    return-object p0
.end method

.method public setForceLang(Z)Lcom/samsung/android/ocr/MOCROptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->forceLang:Z

    return-object p0
.end method

.method public setGetCharResult(Z)Lcom/samsung/android/ocr/MOCROptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->getCharResult:Z

    return-object p0
.end method

.method public setImageType(I)Lcom/samsung/android/ocr/MOCROptions$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->imageType:I

    return-object p0
.end method

.method public setLanguageMode(I)Lcom/samsung/android/ocr/MOCROptions$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->languageMode:I

    return-object p0
.end method

.method public setNumThreads(I)Lcom/samsung/android/ocr/MOCROptions$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->numThreads:I

    return-object p0
.end method

.method public setOptimizeCpu(Z)Lcom/samsung/android/ocr/MOCROptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->optimizeCpu:Z

    return-object p0
.end method

.method public setRunInverted(Z)Lcom/samsung/android/ocr/MOCROptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->runInverted:Z

    return-object p0
.end method

.method public setUseBeamSearch(Z)Lcom/samsung/android/ocr/MOCROptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ocr/MOCROptions$Builder;->useBeamSearch:Z

    return-object p0
.end method
