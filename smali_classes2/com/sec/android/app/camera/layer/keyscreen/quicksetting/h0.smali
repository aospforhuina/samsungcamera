.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/h0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/h0;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/h0;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/h0;->a:Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/h0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->b(I)[Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    return-object p0
.end method
