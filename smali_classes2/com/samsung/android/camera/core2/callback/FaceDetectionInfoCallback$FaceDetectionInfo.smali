.class public Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;
.super Ljava/lang/Object;
.source "FaceDetectionInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceDetectionInfo"
.end annotation


# instance fields
.field private final a:[Landroid/hardware/camera2/params/Face;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;->a:[Landroid/hardware/camera2/params/Face;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;->b:Landroid/graphics/Rect;

    return-object p0
.end method

.method public b()[Landroid/hardware/camera2/params/Face;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;->a:[Landroid/hardware/camera2/params/Face;

    return-object p0
.end method
