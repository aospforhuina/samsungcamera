.class Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$AfLensInfoEventManager;
.super Ljava/lang/Object;
.source "ProPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$AfLensInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfLensInfoEventManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$AfLensInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;Lcom/sec/android/app/camera/shootingmode/pro/u1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$AfLensInfoEventManager;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)V

    return-void
.end method


# virtual methods
.method public onAfLensPositionChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter$AfLensInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->U(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelContract$Presenter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelContract$Presenter;->onAfLensInfoChanged(I)V

    return-void
.end method
