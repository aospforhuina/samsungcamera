.class public final Ly2/r;
.super Ly2/u;
.source "ISBNParsedResult.java"


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ly2/v;->o:Ly2/v;

    invoke-direct {p0, v0}, Ly2/u;-><init>(Ly2/v;)V

    .line 2
    iput-object p1, p0, Ly2/r;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/r;->b:Ljava/lang/String;

    return-object p0
.end method
