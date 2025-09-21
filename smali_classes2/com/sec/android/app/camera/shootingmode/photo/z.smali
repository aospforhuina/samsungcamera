.class public final synthetic Lcom/sec/android/app/camera/shootingmode/photo/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/z;->a:Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/z;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/z;->a:Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/z;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;->a(Lcom/sec/android/app/camera/shootingmode/photo/QrCodeDetectionManager;Z)V

    return-void
.end method
