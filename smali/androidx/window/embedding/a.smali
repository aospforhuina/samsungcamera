.class public final synthetic Landroidx/window/embedding/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final synthetic a:Landroidx/window/embedding/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/embedding/a;

    invoke-direct {v0}, Landroidx/window/embedding/a;-><init>()V

    sput-object v0, Landroidx/window/embedding/a;->a:Landroidx/window/embedding/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3}, Landroidx/window/embedding/EmbeddingCompat$Companion;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lk6/q;

    move-result-object p0

    return-object p0
.end method
