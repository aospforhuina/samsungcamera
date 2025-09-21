.class public Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;
.super Ljava/lang/Object;
.source "ObjectTrackingInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectTrackingInfo"
.end annotation


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private final c:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private final d:Ljava/lang/Integer;

.field private final e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Integer;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;->a:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;->d:Ljava/lang/Integer;

    .line 6
    iput-object p5, p0, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;->e:Landroid/graphics/Rect;

    return-object p0
.end method

.method public b()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public c()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;->d:Ljava/lang/Integer;

    return-object p0
.end method
