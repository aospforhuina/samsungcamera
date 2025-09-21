.class public final synthetic Lcom/sec/android/app/camera/layer/menu/effects/abstraction/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/h;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/h;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/h;->a:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln5/l;

    invoke-virtual {p1}, Ln5/l;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
