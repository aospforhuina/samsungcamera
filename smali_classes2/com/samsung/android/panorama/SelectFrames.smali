.class public Lcom/samsung/android/panorama/SelectFrames;
.super Ljava/lang/Object;
.source "SelectFrames.java"


# instance fields
.field public direction:I

.field public elevation:I

.field public estimateProgress:I

.field public frame:Ljava/nio/ByteBuffer;

.field public point_x:I

.field public point_y:I

.field public select:J

.field public stride:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/panorama/SelectFrames;->frame:Ljava/nio/ByteBuffer;

    .line 3
    iput p2, p0, Lcom/samsung/android/panorama/SelectFrames;->stride:I

    .line 4
    iput p3, p0, Lcom/samsung/android/panorama/SelectFrames;->elevation:I

    return-void
.end method
