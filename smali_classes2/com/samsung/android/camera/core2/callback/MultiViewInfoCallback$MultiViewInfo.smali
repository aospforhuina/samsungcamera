.class public Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;
.super Ljava/lang/Object;
.source "MultiViewInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiViewInfo"
.end annotation


# instance fields
.field private a:[Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method public constructor <init>([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method


# virtual methods
.method public a()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method
