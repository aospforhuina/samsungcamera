.class public Lcom/samsung/srcb/unihal/EventDetectorResultWithPanTilt;
.super Ljava/lang/Object;
.source "EventDetectorResultWithPanTilt.java"


# instance fields
.field public eventSlowFastResult:Lcom/samsung/srcb/unihal/EventSlowFastResult;

.field public panTiltCount:I

.field public panTiltInfoList:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/srcb/unihal/EventDetectorResultWithPanTilt;->panTiltCount:I

    return-void
.end method


# virtual methods
.method public setValue(I[C)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/samsung/srcb/unihal/EventDetectorResultWithPanTilt;->panTiltCount:I

    .line 2
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/samsung/srcb/unihal/EventDetectorResultWithPanTilt;->panTiltInfoList:[C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/samsung/srcb/unihal/EventDetectorResultWithPanTilt;->panTiltInfoList:[C

    aget-char v2, p2, v0

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
