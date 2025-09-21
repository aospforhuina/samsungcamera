.class public final synthetic Lcom/sec/android/app/camera/shootingmode/panorama/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaManager;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/f;->a:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaManager;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/panorama/f;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/f;->a:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaManager;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/f;->b:I

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaManager;->a(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaManager;I)V

    return-void
.end method
