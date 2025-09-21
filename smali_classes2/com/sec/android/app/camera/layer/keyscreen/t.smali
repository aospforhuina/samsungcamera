.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/t;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/t;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/t;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/keyscreen/t;->a:Lcom/sec/android/app/camera/layer/keyscreen/t;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->y(Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method
