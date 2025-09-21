.class final La7/b;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements La7/e;


# static fields
.field public static final a:La7/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La7/b;

    invoke-direct {v0}, La7/b;-><init>()V

    sput-object v0, La7/b;->a:La7/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0

    sget-object p0, Ll6/b0;->a:Ll6/b0;

    return-object p0
.end method
