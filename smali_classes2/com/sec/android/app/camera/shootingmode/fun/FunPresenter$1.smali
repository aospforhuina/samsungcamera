.class Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "FunPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;->startActivityWithDismissKeyguard(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 3

    const-string v0, "FunPresenter"

    const-string/jumbo v1, "startActivityWithDismissKeyguard : onDismissSucceeded"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter$1;->val$intent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;->access$000(Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
