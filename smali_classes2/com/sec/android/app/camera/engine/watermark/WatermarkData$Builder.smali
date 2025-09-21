.class public Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;
.super Ljava/lang/Object;
.source "WatermarkData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/watermark/WatermarkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlign:I

.field private final mContext:Landroid/content/Context;

.field private mDate:Ljava/lang/String;

.field private mFont:I

.field private final mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

.field private mSideMargin:F

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mText:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mDate:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mFont:I

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mAlign:I

    .line 6
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

    .line 7
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mAlign:I

    return p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mFont:I

    return p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mResolution:Lcom/sec/android/app/camera/interfaces/Resolution;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mSideMargin:F

    return p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sec/android/app/camera/engine/watermark/WatermarkData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mText:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "watermark text is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;-><init>(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)V

    return-object v0
.end method

.method public setAlign(I)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mAlign:I

    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatermarkData"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mDate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/sec/android/app/camera/util/TextUtil;->getSpaceWrappedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mDate:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mDate:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setFont(I)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mFont:I

    return-object p0
.end method

.method public setSideMargin(F)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mSideMargin:F

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setText : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatermarkData"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/TextUtil;->getSpaceWrappedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method
