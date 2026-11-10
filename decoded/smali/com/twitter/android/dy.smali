.class final Lcom/twitter/android/dy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dy;->a:Lcom/twitter/android/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/dy;->a:Lcom/twitter/android/ProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/dy;->a:Lcom/twitter/android/ProfileActivity;

    iget-wide v1, v1, Lcom/twitter/android/ProfileActivity;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/i;->h(J)Ljava/lang/String;

    return-void
.end method
