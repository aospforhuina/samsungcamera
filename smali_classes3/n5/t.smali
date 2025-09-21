.class public final synthetic Ln5/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Ln5/t;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln5/t;

    invoke-direct {v0}, Ln5/t;-><init>()V

    sput-object v0, Ln5/t;->a:Ln5/t;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ln5/x;->a([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
