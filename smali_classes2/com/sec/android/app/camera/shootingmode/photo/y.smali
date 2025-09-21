.class public final synthetic Lcom/sec/android/app/camera/shootingmode/photo/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/y;->a:Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/y;->a:Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->h(Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;Lcom/sec/android/app/camera/interfaces/LayoutUpdater;)V

    return-void
.end method
