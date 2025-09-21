.class public final synthetic Lcom/sec/android/app/camera/engine/fa;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/ZoomController;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/ZoomController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/fa;->a:Lcom/sec/android/app/camera/engine/ZoomController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/fa;->a:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->b(Lcom/sec/android/app/camera/engine/ZoomController;)V

    return-void
.end method
