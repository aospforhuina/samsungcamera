.class public final synthetic Lcom/sec/android/app/camera/preview/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/k;->a:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/k;->a:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;->a(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
