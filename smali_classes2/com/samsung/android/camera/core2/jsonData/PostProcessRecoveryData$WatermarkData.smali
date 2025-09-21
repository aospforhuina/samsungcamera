.class public final Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;
.super Ljava/lang/Object;
.source "PostProcessRecoveryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WatermarkData"
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lo2/c;
        value = "alignment"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final b:I
    .annotation runtime Lo2/c;
        value = "marginSide"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field

.field private final c:I
    .annotation runtime Lo2/c;
        value = "marginBottom"
    .end annotation

    .annotation runtime Lo2/d;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;->a:I

    .line 3
    iput p2, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;->b:I

    .line 4
    iput p3, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;->c:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatermarkData {alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", marginSide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", marginBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
