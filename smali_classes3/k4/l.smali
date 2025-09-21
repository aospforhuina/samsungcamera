.class public final synthetic Lk4/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic a:Lk4/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lk4/l;

    invoke-direct {v0}, Lk4/l;-><init>()V

    sput-object v0, Lk4/l;->a:Lk4/l;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    check-cast p1, Landroid/graphics/Point;

    invoke-static {p1}, Lk4/m;->b(Landroid/graphics/Point;)D

    move-result-wide p0

    return-wide p0
.end method
