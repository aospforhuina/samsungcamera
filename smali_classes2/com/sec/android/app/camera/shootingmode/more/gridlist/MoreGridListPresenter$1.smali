.class Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListPresenter$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "MoreGridListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListPresenter;->handleExpertRawModeClickWithDismissKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListPresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListPresenter;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 2

    const-string v0, "MoreGridListPresenter"

    const-string v1, "handleExpertRawModeClickWithDismissKeyguard : onDismissSucceeded"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListPresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListPresenter;->l(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListPresenter;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "handleExpertRawModeClickWithDismissKeyguard : Activity is not found"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
