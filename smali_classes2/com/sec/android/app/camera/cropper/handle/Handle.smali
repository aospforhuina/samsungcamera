.class public abstract Lcom/sec/android/app/camera/cropper/handle/Handle;
.super Ljava/lang/Object;
.source "Handle.java"


# instance fields
.field private final mHandleId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/cropper/handle/Handle;->mHandleId:I

    return-void
.end method


# virtual methods
.method public abstract getDelta(Landroid/graphics/Rect;Lcom/sec/android/app/camera/cropper/polygon/Polygon;Landroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method public getHandleId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/cropper/handle/Handle;->mHandleId:I

    return p0
.end method

.method public abstract move(Landroid/graphics/Rect;Lcom/sec/android/app/camera/cropper/polygon/Polygon;Landroid/graphics/PointF;)V
.end method
