.class final Lcom/twitter/android/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/UsersActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/UsersActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cs;->a:Lcom/twitter/android/UsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/cs;->a:Lcom/twitter/android/UsersActivity;

    iget-object v0, v0, Lcom/twitter/android/UsersActivity;->h:Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/cs;->a:Lcom/twitter/android/UsersActivity;

    iget-wide v1, v1, Lcom/twitter/android/UsersActivity;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/i;->e(J)Ljava/lang/String;

    return-void
.end method
