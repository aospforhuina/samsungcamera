.class public final synthetic Lm3/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lm3/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lm3/s;

    invoke-direct {v0}, Lm3/s;-><init>()V

    sput-object v0, Lm3/s;->a:Lm3/s;

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

    check-cast p1, Lm3/w$f;

    invoke-static {p1}, Lm3/w;->l(Lm3/w$f;)V

    return-void
.end method
