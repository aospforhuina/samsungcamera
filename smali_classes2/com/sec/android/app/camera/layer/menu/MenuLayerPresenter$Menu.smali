.class Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;
.super Ljava/lang/Object;
.source "MenuLayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Menu"
.end annotation


# instance fields
.field private final mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuPresenter;

.field private final mView:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;->mView:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuPresenter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuPresenter;Lcom/sec/android/app/camera/layer/menu/s;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;-><init>(Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuPresenter;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuPresenter;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;->getPresenter()Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuPresenter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;->getView()Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;

    move-result-object p0

    return-object p0
.end method

.method private getPresenter()Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuPresenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuPresenter;

    return-object p0
.end method

.method private getView()Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;->mView:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;

    return-object p0
.end method
