.class public Lcom/samsung/android/panorama/InitParam;
.super Ljava/lang/Object;
.source "InitParam.java"


# instance fields
.field public cameraOrientation:I

.field public frameHeight:I

.field public frameWidth:I

.field public horizontalViewAngle:F

.field public maxFrameCount:I

.field public resultImageMaxRateH:I

.field public resultImageMaxRateV:I

.field public scaleRateH:I

.field public scaleRateV:I

.field public verticalViewAngle:F


# direct methods
.method public constructor <init>(IIIIIIIIFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/panorama/InitParam;->maxFrameCount:I

    .line 3
    iput p2, p0, Lcom/samsung/android/panorama/InitParam;->resultImageMaxRateH:I

    .line 4
    iput p3, p0, Lcom/samsung/android/panorama/InitParam;->resultImageMaxRateV:I

    .line 5
    iput p4, p0, Lcom/samsung/android/panorama/InitParam;->frameWidth:I

    .line 6
    iput p5, p0, Lcom/samsung/android/panorama/InitParam;->frameHeight:I

    .line 7
    iput p6, p0, Lcom/samsung/android/panorama/InitParam;->cameraOrientation:I

    .line 8
    iput p7, p0, Lcom/samsung/android/panorama/InitParam;->scaleRateH:I

    .line 9
    iput p8, p0, Lcom/samsung/android/panorama/InitParam;->scaleRateV:I

    .line 10
    iput p9, p0, Lcom/samsung/android/panorama/InitParam;->verticalViewAngle:F

    .line 11
    iput p10, p0, Lcom/samsung/android/panorama/InitParam;->horizontalViewAngle:F

    return-void
.end method
