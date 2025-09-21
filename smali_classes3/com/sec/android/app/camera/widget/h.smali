.class public final synthetic Lcom/sec/android/app/camera/widget/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer$a;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/h;->a:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/h;->a:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer$a;

    invoke-static {p0}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer$a;->a(Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer$a;)V

    return-void
.end method
