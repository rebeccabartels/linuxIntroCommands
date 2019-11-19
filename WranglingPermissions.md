# Wrangling Permissions
System administrators spend a lot of time managing user accounts. On the flipside, penetration testers spend a lot of time _breaking into_ user accounts. No matter which side you're on, a thorough understanding of how to configure user accounts is paramount.

For this assignment, you'll use a Virtual Machine to:
- Create users and groups
- Set file permissions
- Manage `sudo` rights

---
## Instructions
### Part I: Users and Groups
- In your Docker machine, create the following user accounts:
  - `Andy`
  - `Ollie`
  - `Tina`
  - `Louise`
  - `Gene`
  - `Jimmy`
  - `Teddy`
- Set their passwords to be whatever you would like.
- On the same machine, create the following groups with the following members:
  - `students`: Andy, Ollie, Gene, Jimmy, Teddy
  - `teachers`: Tina, Louise, Ollie
  - Add `Tina` and `Ollie` to the `sudo` and `adm` groups.

When you're done, run: `cut -d: -f1 /etc/passwd | xargs groups` and take a screenshot. This command will show all users, along with the groups they're in. **You'll submit this screenshot as proof of your solution.**

  > **Solutions**
  > ```bash
  >sudo apt update -y
  >sudo apt install -y sudo
  >sudo adduser Andy
  >sudo adduser Ollie
  >sudo adduser Tina
  >sudo adduser Louise
  >sudo adduser Gene
  >sudo adduser Jimmy
  >sudo adduser Teddy
  >sudo groupadd students
  >sudo groupadd teachers
  >sudo usermod -aG students Andy
  >sudo usermod -aG students Ollie
  >sudo usermod -aG students Gene
  >sudo usermod -aG students Jimmy
  >sudo usermod -aG students Teddy
  >sudo usermod -aG teachers Tina
  >sudo usermod -aG teachers Louise
  >sudo usermod -aG teachers Ollie
  >sudo usermod -aG sudo Tina
  >sudo usermod -aG adm Tina
  >sudo usermod -aG sudo Ollie
  >sudo usermod -aG adm Ollie
  > ```

### Part II: Restricting Sudo Access
- Use `visudo` to update `/etc/sudoers` such that `Teddy` and `Louise` can _only_ run `apt` with `sudo`.

When you're done, run: `cat /etc/sudoers`, and take a screenshot of your settings for Teddy and Louise. **You'll submit this screenshot as proof of your solution.**

## Part III: Logging Sudo Access Attempts
- Check if `rsyslog` is installed. If not, install it.
- Start `rsyslog`.
  - **Note**: Use the `service` command.
- Switch users to `Louise`, and do the following:
  - Use `sudo` to run `apt update`, but enter the wrong password.
  - Use `sudo` to run `apt update`.
  - Use `sudo` to run `cat /etc/passwd`.
- Repeat the above as `Teddy`.
- Switch to the `root` user.
- Inspect `/var/log/auth.log`. Look for messages about `sudo`. Which of the commands you ran as `Teddy` and `Louise` do you see in the logs?

  > **Solution**: Your `/etc/sudoers` excerpt should look like:
  > ```bash
  > Louise ALL=(ALL:ALL) /usr/bin/apt
  > Teddy ALL=(ALL:ALL) /usr/bin/apt
  > ```

### Part IV: Customizing User Directories
- Inside each user's `/home` directory, create the following folders:
  - `Documents`
  - `Downloads`
  - `Pictures`
  - `Videos`

- Set permissions for each user's directory to have full permissions for the associated user, read permissions for their group, and no permissions for the world.
  - For example, files in Teddy's directory should have permissions like: `rwxr-----`.

- Test your permissions by switching to one of the users, and attempting to read the other users' files. You should get `Permission denied` errors.
  - For example, switch to the user `Teddy`, and try to list files in `/home/jane`.

- Research `/etc/skel` to figure out how to avoid manually creating `Documents`, etc., directories for every user: <http://www.linfo.org/etc_skel.html>

- Update your `/etc/skel` with `Documents`, etc., directories. Then, create a new user with your name. Inspect the contents of your new user's `/home` directory to verify that your `/etc/skel` update works as expected. **Please submit both a  screenshot of your `/etc/skel` and new user's home directory as proof of your solution.**

  > **Solution**:
  > Your `/etc/skel` should look like:
  > ```bash
  > $ ls /etc/skel
  >   Documents Downloads Pictures Videos
  > ```

