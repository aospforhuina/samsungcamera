.class public final synthetic Ln5/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ln5/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln5/s;

    invoke-direct {v0}, Ln5/s;-><init>()V

    sput-object v0, Ln5/s;->a:Ln5/s;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ln5/x;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
