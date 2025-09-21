.class public final synthetic Ls5/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Ls5/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ls5/a;

    invoke-direct {v0}, Ls5/a;-><init>()V

    sput-object v0, Ls5/a;->a:Ls5/a;

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

    check-cast p1, Ls5/d;

    check-cast p2, Ls5/c;

    invoke-static {p1, p2}, Ls5/b;->a(Ls5/d;Ls5/c;)V

    return-void
.end method
