.class public final synthetic Lcom/sec/android/app/camera/engine/h1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/AeAfManagerImpl$3;

.field public final synthetic b:Landroid/hardware/camera2/params/MeteringRectangle;

.field public final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl$3;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/h1;->a:Lcom/sec/android/app/camera/engine/AeAfManagerImpl$3;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/h1;->b:Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p3, p0, Lcom/sec/android/app/camera/engine/h1;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/h1;->a:Lcom/sec/android/app/camera/engine/AeAfManagerImpl$3;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/h1;->b:Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/h1;->c:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$3;->b(Lcom/sec/android/app/camera/engine/AeAfManagerImpl$3;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V

    return-void
.end method
