.class public final synthetic Lcom/sec/android/app/camera/shootingmode/video/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/video/VideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/x;->a:Lcom/sec/android/app/camera/shootingmode/video/VideoView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/x;->a:Lcom/sec/android/app/camera/shootingmode/video/VideoView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/video/VideoView;->i(Lcom/sec/android/app/camera/shootingmode/video/VideoView;)V

    return-void
.end method
