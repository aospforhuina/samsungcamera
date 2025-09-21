.class public final synthetic Lcom/sec/android/app/camera/shootingmode/pro/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/x;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/x;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/x;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/x;->b:F

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->k(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;F)V

    return-void
.end method
