.class public final synthetic Lcom/sec/android/app/camera/layer/menu/effects/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/menu/effects/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/menu/effects/a;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/menu/effects/a;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/menu/effects/a;->a:Lcom/sec/android/app/camera/layer/menu/effects/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CommandId;

    check-cast p2, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$Presenter;

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuPresenter;->a(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$Presenter;)V

    return-void
.end method
