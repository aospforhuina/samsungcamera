.class public Lcom/samsung/android/panorama/CaptureParam;
.super Ljava/lang/Object;
.source "CaptureParam.java"


# instance fields
.field public deviceOrientation:I

.field public initialDirection:I

.field public isMotionPanorama:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/panorama/CaptureParam;->deviceOrientation:I

    .line 3
    iput p2, p0, Lcom/samsung/android/panorama/CaptureParam;->initialDirection:I

    .line 4
    iput-boolean p3, p0, Lcom/samsung/android/panorama/CaptureParam;->isMotionPanorama:Z

    return-void
.end method
