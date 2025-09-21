.class public final synthetic Lm3/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lm3/t;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lm3/t;

    invoke-direct {v0}, Lm3/t;-><init>()V

    sput-object v0, Lm3/t;->a:Lm3/t;

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

    invoke-static {p1}, Lm3/w;->r(Lm3/w$f;)V

    return-void
.end method
