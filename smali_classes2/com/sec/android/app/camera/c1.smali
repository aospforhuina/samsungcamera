.class public final synthetic Lcom/sec/android/app/camera/c1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/CameraWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/CameraWindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/c1;->a:Lcom/sec/android/app/camera/CameraWindowManager;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/c1;->a:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/CameraWindowManager;->b(Lcom/sec/android/app/camera/CameraWindowManager;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
